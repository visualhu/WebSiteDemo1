using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Xml;

namespace CommonLibrary
{
    public class SectionDemoHandler:IConfigurationSectionHandler
    {
        public object Create(object parent, object configContext, XmlNode section)
        {
            Dictionary<string,NameManagement> names=new Dictionary<string, NameManagement>();
            string key = string.Empty;
            string firstName = string.Empty;
            string lastName = string.Empty;
            foreach (XmlNode childNode in section.ChildNodes)
            {
                if (childNode.Attributes["key"] != null)
                {
                    key = childNode.Attributes["key"].Value;

                    if (childNode.Attributes["firstname"] != null)
                    {
                        firstName = childNode.Attributes["firstname"].Value;
                    }
                    else
                    {
                        firstName = string.Empty;
                    }
                    if (childNode.Attributes["lastname"] != null)
                    {
                        lastName = childNode.Attributes["lastname"].Value;
                    }
                    else
                    {
                        lastName = string.Empty;
                    }
                    names.Add(key, new NameManagement(firstName, lastName));
                }
            }
            return names;
        }
    }

    public class NameManagement
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public NameManagement(string firstName, string lastName)
        {
            this.FirstName = firstName;
            this.LastName = lastName;
        }

        public override string ToString()
        {
            return string.Format("{0} {1}", this.FirstName, this.LastName);
        }
    }
}
