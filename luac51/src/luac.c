/*
** $Id: luac.c,v 1.54 2006/06/02 17:37:11 lhf Exp $
** Lua compiler (saves bytecodes to files; also list bytecodes)
** See Copyright Notice in lua.h
*/
#define _CRT_SECURE_NO_WARNINGS

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define luac_c
#define LUA_CORE

#include "lua.h"
#include "lauxlib.h"

#include "ldo.h"
#include "lfunc.h"
#include "lmem.h"
#include "lobject.h"
#include "lopcodes.h"
#include "lstring.h"
#include "lundump.h"

#define PROGNAME	"luac"		/* default program name */
//#define	OUTPUT		PROGNAME ".out"	/* default output file */

//static int listing=0;			/* list bytecodes? */
//static int dumping=1;			/* dump bytecodes? */
//static int stripping=0;			/* strip debug information? */
//static char Output[]={ OUTPUT };	/* default output file name */
//static const char* output=Output;	/* actual output file name */
//static const char* progname=PROGNAME;	/* actual program name */
/*
static void fatal(const char* message)
{
 fprintf(stderr,"%s: %s\n",progname,message);
 exit(EXIT_FAILURE);
}

static void cannot(const char* what)
{
 fprintf(stderr,"%s: cannot %s %s: %s\n",progname,what,output,strerror(errno));
 exit(EXIT_FAILURE);
}

static void usage(const char* message)
{
 if (*message=='-')
  fprintf(stderr,"%s: unrecognized option " LUA_QS "\n",progname,message);
 else
  fprintf(stderr,"%s: %s\n",progname,message);
 fprintf(stderr,
 "usage: %s [options] [filenames].\n"
 "Available options are:\n"
 "  -        process stdin\n"
 "  -l       list\n"
 "  -o name  output to file " LUA_QL("name") " (default is \"%s\")\n"
 "  -p       parse only\n"
 "  -s       strip debug information\n"
 "  -v       show version information\n"
 "  --       stop handling options\n",
 progname,Output);
 exit(EXIT_FAILURE);
}

#define	IS(s)	(strcmp(argv[i],s)==0)

static int doargs(int argc, char* argv[])
{
 int i;
 int version=0;
 if (argv[0]!=NULL && *argv[0]!=0) progname=argv[0];
 for (i=1; i<argc; i++)
 {
  if (*argv[i]!='-')			/* end of options; keep it *
   break;
  else if (IS("--"))			/* end of options; skip it *
  {
   ++i;
   if (version) ++version;
   break;
  }
  else if (IS("-"))			/* end of options; use stdin *
   break;
  else if (IS("-l"))			/* list *
   ++listing;
  else if (IS("-o"))			/* output file *
  {
   output=argv[++i];
   if (output==NULL || *output==0) usage(LUA_QL("-o") " needs argument");
   if (IS("-")) output=NULL;
  }
  else if (IS("-p"))			/* parse only *
   dumping=0;
  else if (IS("-s"))			/* strip debug information *
   stripping=1;
  else if (IS("-v"))			/* show version *
   ++version;
  else					/* unknown option *
   usage(argv[i]);
 }
 if (i==argc && (listing || !dumping))
 {
  dumping=0;
  argv[--i]=Output;
 }
 if (version)
 {
  printf("%s  %s\n",LUA_RELEASE,LUA_COPYRIGHT);
  if (version==argc-1) exit(EXIT_SUCCESS);
 }
 return i;
}


static int writer(lua_State* L, const void* p, size_t size, void* u)
{
 UNUSED(L);
 return (fwrite(p,size,1,(FILE*)u)!=1) && (size!=0);
}

struct Smain {
 int argc;
 char** argv;
};

static int pmain(lua_State* L)
{
 struct Smain* s = (struct Smain*)lua_touserdata(L, 1);
 int argc=s->argc;
 char** argv=s->argv;
 const Proto* f;
 int i;
 if (!lua_checkstack(L,argc)) fatal("too many input files");
 for (i=0; i<argc; i++)
 {
  const char* filename=IS("-") ? NULL : argv[i];
  if (luaL_loadfile(L,filename)!=0) fatal(lua_tostring(L,-1));
 }
 f=combine(L,argc);
 if (listing) luaU_print(f,listing>1);
 if (dumping)
 {
  FILE* D= (output==NULL) ? stdout : fopen(output,"wb");
  if (D==NULL) cannot("open");
  lua_lock(L);
  luaU_dump(L,f,writer,D,stripping);
  lua_unlock(L);
  if (ferror(D)) cannot("write");
  if (fclose(D)) cannot("close");
 }
 return 0;
}

int main(int argc, char* argv[])
{
 lua_State* L;
 struct Smain s;
 int i=doargs(argc,argv);
 argc-=i; argv+=i;
 if (argc<=0) usage("no input files given");
 L=lua_open();
 if (L==NULL) fatal("not enough memory for state");
 s.argc=argc;
 s.argv=argv;
 if (lua_cpcall(L,pmain,&s)!=0) fatal(lua_tostring(L,-1));
 lua_close(L);
 return EXIT_SUCCESS;
}*/

#define toproto(L,i) (clvalue(L->top+(i))->l.p)

static int writer(lua_State* L, const void* p, size_t size, void* u)
{
	UNUSED(L);
	return (fwrite(p, size, 1, (FILE*)u) != 1) && (size != 0);
}

#if defined(_MSC_VER)
    //  Microsoft 
    #define EXPORT __declspec(dllexport)
    #define IMPORT __declspec(dllimport)
#elif defined(__GNUC__)
    //  GCC
    #define EXPORT __attribute__((visibility("default")))
    #define IMPORT
#else
    //  do nothing and hope for the best?
    #define EXPORT
    #define IMPORT
    #pragma warning Unknown dynamic link import/export semantics.
#endif

int EXPORT Process(const char* inPath, const char* outPath, const char* bytecodePath, const char** error)
{
	lua_State* L;
	L = lua_open();

	const Proto* f;

	if (luaL_loadfile(L, inPath, bytecodePath) != 0)
	{
		*error = lua_tostring(L, -1);
		return 1;
	}

	f = toproto(L, -1);

	FILE* D = fopen(outPath, "wb");
	lua_lock(L);
	luaU_dump(L, f, writer, D, 0);
	lua_unlock(L);
	fclose(D);

	lua_close(L);

	return 0;
}

int EXPORT ProcessBytes(char* inBuffer, int inSize, char** outBuffer, int* outSize, const char* bytecodePath, const char** error)
{
	FILE* fileptr;

	const char* tmpFile = tmpnam(NULL);

	fileptr = fopen(tmpFile, "wb");
	fwrite(inBuffer, 1, inSize, fileptr);
	fclose(fileptr);

	if (Process(tmpFile, tmpFile, bytecodePath, error) != 0)
		return 1;

	char* buffer;
	long filelen;

	fileptr = fopen(tmpFile, "rb");  // Open the file in binary mode
	fseek(fileptr, 0, SEEK_END);          // Jump to the end of the file
	filelen = ftell(fileptr);             // Get the current byte offset in the file
	rewind(fileptr);                      // Jump back to the beginning of the file

	buffer = (char*)malloc(filelen * sizeof(char)); // Enough memory for the file
	fread(buffer, filelen, 1, fileptr); // Read in the entire file
	fclose(fileptr); // Close the file

	*outSize = (int)filelen;

	*outBuffer = (char*)malloc(filelen * sizeof(char));
	memcpy(*outBuffer, buffer, filelen);

	remove(tmpFile);

	return 0;
}

void EXPORT FreeMem(char *obj)
{
	free(obj);
}