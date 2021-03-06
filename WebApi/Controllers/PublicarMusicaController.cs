﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using WebApi.Models;
using WebApi.Transfers;

namespace WebApi.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class PublicarMusicaController : ApiController
    {
        [HttpGet]
        [Route("api/PublicarMusica/ObtenerMusica")]
        public musicadto ObtenerMusica(int id)
        {
            return Musica.ObtenerMusica(id);
        }
        
        [HttpPost]
        [Route("api/AfiliacionUsuarios/ActualizarMusica")]
        public musicadto ActualizarMusica(int id, musicadto alumnodto)
        {
            return Musica.ActualizarMusica(id, alumnodto);
        }
    }
}
