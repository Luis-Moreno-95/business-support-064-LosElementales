import { Http, Headers, RequestOptions } from '@angular/http';
import { Injectable } from '@angular/core';
import { Storage } from '@ionic/storage';
import 'rxjs/add/operator/map';

/*
  Generated class for the UserServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class UserServiceProvider {

  public token:any;
  response:any;

  constructor(public http: Http,
    public storage: Storage) {
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
 

    //load Token if exists
    this.storage.get('token').then((value)=>{
      this.token = value;
      console.log('user token: ', this.token);      
    });

          
    let headerOptions: any = { 'Content-Type': 'application/json' };
    let headers = new Headers(headerOptions);   

    headers.append('Authorization', this.token);
    var url = 'http://localhost:3000/users/nickname/' + encodeURI(nickname);
    var response = this.http.get(url, {headers:headers});  
    console.log('Response is: ', this.response);
    return response;
    
  }

}
