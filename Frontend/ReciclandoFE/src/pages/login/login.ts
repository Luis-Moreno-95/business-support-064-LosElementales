import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { UserServiceProvider } from '../../providers/user-service/user-service';
import { Http, Headers, RequestOptions } from '@angular/http';
import 'rxjs/add/operator/map';

/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage {

  @ViewChild('username') username;
  @ViewChild('password') password;

  token: any = [];
  constructor(public navCtrl: NavController, public navParams: NavParams, public http: Http) {
  }

  ionViewDidLoad() {

  }

  signIn(){
    console.log(this.username.value, this.password.value);
    //Agregamos username y password a un arreglo
    var user ={"auth":{'nickname':this.username.value,'password':this.password.value}};

    let headerOptions: any = { 'Content-Type': 'application/json' };
    let headers = new Headers(headerOptions);

    this.http.post("http://localhost:3000/user_token",
    JSON.stringify(user),
    new RequestOptions({ headers: headers }))
    .subscribe(data => {
        this.token = data;
        console.log(this.token);
        }, error => {
            console.log(JSON.stringify(error.json()));
        });
  }
}
