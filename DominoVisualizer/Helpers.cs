using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace DominoVisualizer
{
    public static class Helpers
    {
        public static char DS = Path.DirectorySeparatorChar;
        
        public static string RandomString()
        {
            Random random = new Random();
            int length = 40;

            const string chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            string newstr = new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());

            return newstr;
        }

        public static List<DominoDict> CopyList(List<DominoDict> source)
        {
            var newList = new List<DominoDict>();

            foreach (var i in source)
            {
                var ni = new DominoDict();
                ni.Name = i.Name;
                ni.Value = i.Value;
                ni.ContainerUI = i.ContainerUI;
                ni.UniqueID = i.UniqueID;

                ni.ValueArray = CopyList(i.ValueArray);

                newList.Add(ni);
            }

            return newList;
        }
    }
}
