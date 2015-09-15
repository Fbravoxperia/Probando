using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using QuienEsElMejor.Dominio;

namespace QuienEsElMejor.ServiciosCRUD
{
    [ServiceContract]
    public interface IContendores
    {
        [OperationContract]
        Contendor CrearContendor(string nombre, string rutaimagen, string descripcion);
        [OperationContract]
        Contendor ObtenerContendor(int codigo);
        [OperationContract]
        Contendor ModificarContendor(int codigo, string nombre, string rutaimagen, string descripcion);
        [OperationContract]
        void EliminarContendor(int codigo);
        [OperationContract]
        List<Contendor> ListarContendores();
    }
}
