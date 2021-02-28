//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuario()
        {
            this.Perfils = new HashSet<Perfil>();
            this.PlayLists = new HashSet<PlayList>();
        }
    
        public int Id { get; set; }
        public string email { get; set; }
        public string contrasena { get; set; }
        public Nullable<System.DateTime> fecha_nacimiento { get; set; }
        public string nombre_perfil { get; set; }
        public string sexo { get; set; }
        public int IdSuscripcion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Perfil> Perfils { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlayList> PlayLists { get; set; }
        public virtual Suscripcion Suscripcion { get; set; }
    }
}
