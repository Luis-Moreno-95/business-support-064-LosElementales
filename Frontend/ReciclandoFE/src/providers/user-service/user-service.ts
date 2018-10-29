import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import 'rxjs/add/operator/map';

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
  getUsuarios() {
    return this.http.get('http://localhost:3000/users');
  }

  //Obtener usuario por ID
  getUsuarioPorId() {
    return this.http.get('http://localhost:3000/users/1');
  }


  getUserByID(id) {
    var url = 'http://localhost:3000/users/' + encodeURI(id);
    var response = this.http.get(url);
    console.log('el response: ', response);
    return response;
  }
 //Obtener usuario con el NickName
  getUserByNickname(nickname){
    var url = 'http://localhost:3000/users/nickname/' + encodeURI(nickname);
    var response = this.http.get(url);    
    return response;
  }

}
