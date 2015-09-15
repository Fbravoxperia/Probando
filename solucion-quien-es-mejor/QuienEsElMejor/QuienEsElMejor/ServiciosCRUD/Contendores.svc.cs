using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using QuienEsElMejor.Dominio;
using QuienEsElMejor.Persistencia;

namespace QuienEsElMejor.ServiciosCRUD
{
    public class Contendores : IContendores
    {
        private ContendorDAO contendorDAO = null;
        private ContendorDAO ContendorDAO
        {
            get
            {
                if (contendorDAO == null)
                    contendorDAO = new ContendorDAO();
                return contendorDAO;
            }
        }

        public Contendor CrearContendor(string nombre, string rutaimagen, string descripcion)
        {
            Contendor ContendorACrear = new Contendor()
            {
                Nombre = nombre,
                RutaImagen = rutaimagen,
                Descripcion = descripcion
            };
            return ContendorDAO.Crear(ContendorACrear);
        }

        public Contendor ObtenerContendor(int codigo)
        {
            return ContendorDAO.Obtener(codigo);
        }

        public Contendor ModificarContendor(int codigo, string nombre, string rutaimagen, string descripcion)
        {
            Contendor ContendorAModificar = new Contendor()
            {
                Codigo = codigo,
                Nombre = nombre,
                RutaImagen = rutaimagen,
                Descripcion = descripcion
            };
            return ContendorDAO.Modificar(ContendorAModificar);
        }

        public void EliminarContendor(int codigo)
        {
            Contendor ContendorExistente = ContendorDAO.Obtener(codigo);
            ContendorDAO.Eliminar(ContendorExistente);
        }

        public List<Contendor> ListarContendores()
        {
            return ContendorDAO.ListarTodos().ToList();
        }
    }
}
