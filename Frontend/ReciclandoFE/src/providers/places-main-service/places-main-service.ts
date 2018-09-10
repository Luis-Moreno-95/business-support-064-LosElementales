import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the PlacesMainServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class PlacesMainServiceProvider {

  constructor(public http: HttpClient) {
    console.log('Hello PlacesMainServiceProvider Provider');
  }

  //Obtener lista de lugares
  getPlaces(){
    return this.http.get('http://localhost:3000/places');
  }

}
