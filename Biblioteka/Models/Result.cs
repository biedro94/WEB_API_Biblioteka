using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Result
{
    public class Result
    {
        public bool Success { get; set; } = false;
        public bool Error { get; set; } = false;
        public List<string> Messages { get; set; } 
        public static List<string> CreateListString(params string[] messages)
        {
            return messages.ToList();
        }
    }

    public class Result<T> : Result
    {
        private T _value;

        public T Value { get { return _value; } set { _value = Value; Success = true;  }  }

        public static Result<T> ErrOrSuc(T data, List<string> messages = null)
        {
            var result = new Result<T>();
            if (data == null)
            {
                result.Error = true;
                result.Messages = messages;
            }
            else
            {
                result.Success = true;
                result.Value = data;
            }

            return result;
        }

        
    }
}
