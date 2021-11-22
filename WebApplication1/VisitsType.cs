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
    [Table("visits")]
    public class VisitsType
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }
        public string ip { get; set; }
        public DateTime Time { get; set; }

        public static void AddVisit(string ip)
        {
            try
            {
                DBCOntext db = new DBCOntext();
                db.Visits.Add(new VisitsType() { ip = ip, Time = DateTime.Now });
                db.SaveChanges();
            }
            catch (Exception)
            {

            }

        }

        public static int GetVisitsCount()
        {
            DBCOntext db = new DBCOntext();
     
            return db.Visits.ToList().Count;
        }
    }
}