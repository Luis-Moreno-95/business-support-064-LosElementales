import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Storage } from '@ionic/storage';
import {UserServiceProvider} from  '../../providers/user-service/user-service';
import { FormsModule } from '@angular/forms';

/**
 * Generated class for the PlacesDetailPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-places-detail',
  templateUrl: 'places-detail.html',
})
export class PlacesDetailPage {

  placeInfo: any;
  nickname: any;
  token: any;
  usuario: any = [];
  singleValue4:number;
  puntosBoleta: number;
  puntosUsuario: number;
  maxUserTickets:number;


  constructor(public navCtrl: NavController, 
    public navParams: NavParams, 
    private storage: Storage,
    private UserServiceProvider: UserServiceProvider) {
    this.placeInfo = this.navParams.data;
  }



  ionViewWillEnter() {
       

    this.puntosBoleta = this.placeInfo.puntos_boleta_lugar; 
    console.log(this.placeInfo.id);
    this.storage.get('nickname').then((val) => {
      this.nickname = val;

      this.storage.get('token').then((val)=>{
        this.UserServiceProvider.getUserByNickname(this.nickname, val)
        .subscribe(
          (data) => {
            this.usuario = data.json();
            console.log(this.usuario);
            this.puntosUsuario = this.usuario.puntaje_usuario;       
            this.calculateMaxTickets();        
                                 
          },
          (error)=>{
            console.error(error);
          }
        );
      });

    });
  }

  calculateTicketRedemption(){
    if (this.puntosUsuario >0){
      var a = 0;
      a = this.puntosUsuario - (this.puntosBoleta*this.singleValue4);
      console.log('Valor de a', a);
    }
  }

  calculateMaxTickets(){
    this.maxUserTickets = Math.trunc((this.puntosUsuario / this.puntosBoleta));
    console.log('Número Máximo de tickets: ', this.maxUserTickets);
  }
}
