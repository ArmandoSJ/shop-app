class Articulos {
  var vArticuloID;
  var vDescription;
  var imgPath;

  Articulos({
    this.vArticuloID,
    this.vDescription,
  });

  Articulos.fromJsonMap(Map<String, dynamic> json) {
    vArticuloID = json['articuloid'];
    vDescription = json['descripcion'];
    imgPath = json['imgPath'];
  }

  getPosterImg() {
    if (imgPath == null) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$imgPath';
    }
  }

/*   getBackgroundImg() {

    if ( imgPath == null ) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }

  } */

}
