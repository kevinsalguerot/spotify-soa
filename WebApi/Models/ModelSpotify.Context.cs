﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApi.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class spotifyEntities : DbContext
    {
        public spotifyEntities()
            : base("name=spotifyEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Album> Albums { get; set; }
        public virtual DbSet<DetallePlayList> DetallePlayLists { get; set; }
        public virtual DbSet<Facturacion> Facturacions { get; set; }
        public virtual DbSet<Musica> Musicas { get; set; }
        public virtual DbSet<Perfil> Perfils { get; set; }
        public virtual DbSet<Plane> Planes { get; set; }
        public virtual DbSet<PlayList> PlayLists { get; set; }
        public virtual DbSet<Suscripcion> Suscripcions { get; set; }
        public virtual DbSet<Usuario> Usuarios { get; set; }
    }
}