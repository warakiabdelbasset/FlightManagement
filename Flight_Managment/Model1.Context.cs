﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Flight_Managment
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class gest_aeroEntities : DbContext
    {
        public gest_aeroEntities()
            : base("name=gest_aeroEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<aeroport> aeroports { get; set; }
        public virtual DbSet<avion> avions { get; set; }
        public virtual DbSet<billet> billets { get; set; }
        public virtual DbSet<client> clients { get; set; }
        public virtual DbSet<ligne> lignes { get; set; }
        public virtual DbSet<passager> passagers { get; set; }
        public virtual DbSet<pilote> pilotes { get; set; }
        public virtual DbSet<reservation> reservations { get; set; }
        public virtual DbSet<utilisateur> utilisateurs { get; set; }
        public virtual DbSet<vol> vols { get; set; }
    }
}
