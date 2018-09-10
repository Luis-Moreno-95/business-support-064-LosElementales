import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the ContentServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class ContentServiceProvider {

  constructor(public http: HttpClient) {
    console.log('Hello ContentServiceProvider Provider');
  }

  //Obtener Contenido
  getContenido(){
    return this.http.get('http://localhost:3000/contents');
  }

  //Obtener contenido por ID
  getContenidoPorId(){
    return this.http.get('http://localhost:3000/contents/1');
  }

}
