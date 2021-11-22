using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;

namespace WebApplication1
{
    public class Persons
    {
        private static bool saveFailed;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int PersonId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }


        

        public static void Add(Persons person)
        {
            DBCOntext db = new DBCOntext();
            db.Database.Connection.Open();
            person.PersonId = db.Persons.Count() + 1;
            db.Persons.Add(person);

            db.SaveChanges();

        
        }

        public static void ModifiedFirst()
        {
            DBCOntext db = new DBCOntext();
            db.Persons.First().FirstName = "Edited";
            db.SaveChanges();
        }
        public static void DeleteFirts()
        {
            DBCOntext db = new DBCOntext();
            db.Persons.Remove(db.Persons.First());
            db.SaveChanges();
        }

    }
}