
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using WebApplication1;


    public class DBCOntext : DbContext
    {

        public DBCOntext() : base("DB")
        {
        }

        public DbSet<Persons> Persons { get; set; }
        public DbSet<ProjectType> Projects { get; set; }
        public DbSet<ToolsType> Tools { get; set; }
        public DbSet<SkillsType> Skills { get; set; }
        public DbSet<VisitsType> Visits { get; set; }
        public DbSet<MessageType> Message { get; set; }

    public static DBCOntext DB()
    {
        return new DBCOntext();
    }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
