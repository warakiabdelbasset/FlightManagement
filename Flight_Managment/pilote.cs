//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class pilote
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public pilote()
        {
            this.vols = new HashSet<vol>();
        }
    
        public int num_pil { get; set; }
        public string nom_pil { get; set; }
        public string prenom_pil { get; set; }
        public string tel_pil { get; set; }
        public string email_pil { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<vol> vols { get; set; }
    }
}