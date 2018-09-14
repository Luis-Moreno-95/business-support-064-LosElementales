import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the UserServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class UserServiceProvider {

  constructor(public http: HttpClient) {
    console.log('Hello UserServiceProvider Provider');
  }

  //Obtener usuarios
  getUsuarios(){
    return this.http.get('http://localhost:3000/users');
  }

  //Obtener usuario por ID
  getUsuarioPorId(){
    return this.http.get('http://localhost:3000/users/1');
  }

 //Obtener Token
   getUsuarioAuth(obj){
    return this.http.post('http://localhost:3000/user_token/' + obj);

  }
}
