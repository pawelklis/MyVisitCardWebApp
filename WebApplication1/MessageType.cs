using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net.Mail;
using System.Runtime.Remoting.Contexts;
using System.Web;

namespace WebApplication1
{
    [Table("contact")]
    public class MessageType
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Subject { get; set; }
        public string message { get; set; }
        public DateTime Time { get; set; }

        public static void AddMessage(string name, string email, string subject, string message)
        {
            MessageType ms = new MessageType();
            ms.Name = name;
            ms.Subject = subject;
            ms.Email = email;
            ms.message = message;
            ms.Time = DateTime.Now;

            DBCOntext db = new DBCOntext();
            db.Message.Add(ms);
            db.SaveChanges();

            SendMessage(ms);
    
        }

        private static void SendMessage( MessageType ms)
        {
            try
            {
                SmtpClient smtp = new SmtpClient("poczta.o2.pl", 587);
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("pklis@o2.pl", "axobyhab");
                smtp.Send("pklis@o2.pl",
                                               "pawelklis85@gmail.com",
                                               ms.Email+ " " + ms.Subject,
                                               ms.message);
            }
            catch (Exception ex)
            {
            }

        }
    }

}