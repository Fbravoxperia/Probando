using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace QuienEsElMejor.Dominio
{
    [DataContract]
    public class Contendor
    {
        [DataMember]
        public int Codigo { get; set; }
        [DataMember]
        public string Nombre { get; set; }
        [DataMember]
        public string RutaImagen { get; set; }
        [DataMember]
        public string Descripcion { get; set; }
    }
}