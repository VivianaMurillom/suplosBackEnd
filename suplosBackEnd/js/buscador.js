
// Función que trae la información de la base de datos
function getCityType(){

  // Envío de solicitud para traer la información del select con el listado de ciudades

    $.ajax({
      type: "POST",
      url: 'controlador/inmuebles_cotrolador.php',
      dataType: "JSON",
      data: {'action': 'GetCity'},
      success: function (response) {
        if(response != ''){
          var option_city = '<option value="" selected="">Elige una ciudad</option>';
          
					$.each(response, function (key, city) {
            option_city += '<option value="'+city.Ciudad+'">'+city.Ciudad+'</option>'
          });
          $(".selectCiudad").html(option_city);
        }
      }
    });

    // Envío de solicitud para traer la información del select con el listado del tipo de bienes

    $.ajax({
      type: "POST",
      url: 'controlador/inmuebles_cotrolador.php',
      dataType: "JSON",
      data: {'action': 'GetTYpe'},
      success: function (response) {
        if(response != ''){
          var option_Tipo = '<option value="">Elige un tipo</option>';
          
					$.each(response, function (key, Tipo) {
            option_Tipo += '<option value="'+Tipo.Tipo+'">'+Tipo.Tipo+'</option>'
          });
          $(".selectTipo").html(option_Tipo);
        }
      }
    });
    GetAvailableProperties();
    GetMyProperties();
  }

  // Envío de solicitud para traer las cards de bienes disponibles

  function GetAvailableProperties(){
    let selectCiudad = $("#selectCiudad").val();
    let selectTipo = $("#selectTipo").val();
    let rangoPrecio = $("#rangoPrecio").val();
    $(".number_Properties").text(0);

    $.ajax({
      type: "POST",
      url: 'controlador/inmuebles_cotrolador.php',
      dataType: "JSON",
      data: {'action': 'GetAvailableProperties', 'city': selectCiudad, 'type': selectTipo, 'rangoPrecio': rangoPrecio},
      success: function (response) {
        var html = '';
        if(response != ''){
					$.each(response, function (key, Disponibles) {
            html += `<div class="Inmueble_Disponible">
                        <div class="div_Inmueble_Disponible" style="justify-content: center;">
                          <div class="row">
                            <div class="col" style="left: 1.5%;top: 7px;width: 50%;margin-top: 2%;">
                              <img src="img/home.jpg" width="80%" height="80%">
                            </div>
                            <div class="col" style="top: 7px;width: 50%;margin-top: 1%;">
                              <span><b>Dirección:</b> ${Disponibles.Direccion}</span><br>
                              <span><b>Ciudad:</b> ${Disponibles.Ciudad}</span><br>
                              <span><b>Teléfono:</b> ${Disponibles.Telefono}</span><br>
                              <span><b>Codigo Postal:</b> ${Disponibles.Codigo_Postal}</span><br>
                              <span><b>Tipo:</b> ${Disponibles.Tipo}</span><br>
                              <span><b>Precio:</b> ${Disponibles.Precio}</span><br>            
                              <div class="botonField">
                                <input type="submit" class="btn green white-text" value="Guardar" id="saveButton" onclick="SaveMyProperties(${Disponibles.Id})">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>`;
          });
          $(".Inmuebles_disponibles").html(html);
          $(".number_Properties").text(response.length);
        }else{
          $(".Inmuebles_disponibles").html('Sin resultados');
        }
      }
    });
  }

  // Envío de solicitud para traer las cards de mis bienes

  function GetMyProperties(){

    $(".number_MyProperties").text(0);
    $.ajax({
      type: "POST",
      url: 'controlador/inmuebles_cotrolador.php',
      dataType: "JSON",
      data: {'action': 'GetMyProperties'},
      success: function (response) {
        var html = '';
        if(response != ''){
					$.each(response, function (key, myInmuebels) {
            html += `<div class="Inmueble_Disponible">
                        <div class="div_Inmueble_Disponible" style="justify-content: center;">
                          <div class="row">
                            <div class="col" style="left: 1.5%;top: 7px;width: 50%;margin-top: 2%;">
                              <img src="img/home.jpg" width="80%" height="80%">
                            </div>
                            <div class="col" style="top: 7px;width: 50%;;margin-top: 1%;">
                              <span><b>Dirección:</b> ${myInmuebels.Direccion}</span><br>
                              <span><b>Ciudad:</b> ${myInmuebels.Ciudad}</span><br>
                              <span><b>Teléfono:</b> ${myInmuebels.Telefono}</span><br>
                              <span><b>Codigo Postal:</b> ${myInmuebels.Codigo_Postal}</span><br>
                              <span><b>Tipo:</b> ${myInmuebels.Tipo}</span><br>
                              <span><b>Precio:</b> ${myInmuebels.Precio}</span><br>            
                              <div class="botonField">
                                <input type="submit" class="btn green white-text" value="Eliminar" id="removeButton" onclick="RemoveMyProperties(${myInmuebels.Id})">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>`;
          });
          $(".MyInmuebles").html(html);
          $(".number_MyProperties").text(response.length);
        }else{
          $(".MyInmuebles").html('Sin resultados');
        }
      }
    });
  }

  //Función para mover los bienes del listado de bienes disponibles al listado de mis bienes

  function SaveMyProperties(id){
    $.ajax({
      type: "POST",
      url: 'controlador/inmuebles_cotrolador.php',
      dataType: "JSON",
      data: {'action': 'SaveMyProperties', 'id': id},
      success: function (response) {
        GetAvailableProperties();
        GetMyProperties();
      }
    });
  }

  //Función para mover los bienes del listado de listado de mis bienes al bienes disponibles

  function RemoveMyProperties(id){
    $.ajax({
      type: "POST",
      url: 'controlador/inmuebles_cotrolador.php',
      dataType: "JSON",
      data: {'action': 'RemoveMyProperties', 'id': id},
      success: function (response) {
        GetAvailableProperties();
        GetMyProperties();
      }
    });
  }

  //Función para generar el reporte de excel

  function ReportExcel(ubicacion){
    let selectCiudad = '';
    let selectTipo = '';

    if(ubicacion == 'report'){
      selectCiudad = $("#selectCiudadReport").val();
      selectTipo = $("#selectTipoReport").val();
    }else if(ubicacion == 'filter'){
      selectCiudad = $("#selectCiudad").val();
      selectTipo = $("#selectTipo").val();
    }
    
    $.ajax({
      type: "POST",
      url: 'controlador/inmuebles_cotrolador.php',
      dataType: "JSON",
      data: {'action': 'ReportExcel', 'city': selectCiudad, 'type': selectTipo},
      success: function (response) {
        if(response.data == true){
          document.location.href = response.url;
        }
      }
    });
  }