import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { Http, Headers, RequestOptions } from '@angular/http';
import { TabsPage } from '../tabs/tabs';
import { Storage } from '@ionic/storage';


/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'q',
  templateUrl: 'login.html',
})
export class LoginPage {

  @ViewChild('username') username;
  @ViewChild('password') password;

  public token: any = [];
  public theToken: any;

  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    public http: Http,
    private storage: Storage,
    private alertCtrl: AlertController) {
  }


  ionViewDidLoad() {

  }

  signIn(){

    //Agregamos username y password a un arreglo
    var user ={"auth":{'nickname':this.username.value,'password':this.password.value}};

    let headerOptions: any = { 'Content-Type': 'application/json' };
    let headers = new Headers(headerOptions);

    this.http.post("http://localhost:3000/user_token",
    JSON.stringify(user),
    new RequestOptions({ headers: headers }))
    .subscribe(data => {
        this.token = data;
        this.theToken = this.token.json();
        this.storage.set('token',this.theToken.jwt);
        this.storage.set('nickname', user.auth.nickname);
        this.navCtrl.push(TabsPage, {usuario:this.username});
        this.username.value = "";
        this.password.value = "";
        }, error => {
          this.presentAlert();
            //console.log(JSON.stringify(error.json()));
        });
  }

  presentAlert(){
    let alert = this.alertCtrl.create({
      title: 'Usuario o clave erradas',
      subTitle: 'Por favor verifique los datos ingresados',
      buttons: ['Aceptar']
    });
    alert.present();
  }
}
