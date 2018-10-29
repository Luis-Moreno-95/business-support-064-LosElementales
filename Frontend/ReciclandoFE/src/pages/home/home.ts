import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { UserServiceProvider } from '../../providers/user-service/user-service';
import { Storage } from '@ionic/storage';
import { ThrowStmt } from '@angular/compiler';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  usuario: any = [];
  nickname : string;
  constructor(
    public navCtrl: NavController,
    public UserServiceProvider : UserServiceProvider, 
    private storage: Storage,
    private navParams: NavParams,
    ) {
      //this.user = this.navParams.data;

  }

  ionViewDidLoad(){
    
    this.storage.get('nickname').then((val) => {
      console.log('Your nickname is: ', val);
      this.nickname = val;

      this.UserServiceProvider.getUserByNickname(this.nickname)
      .subscribe(
        (data) => {
          this.usuario = data;
          console.log(this.usuario);
          this.storage.set('puntaje_usuario', this.usuario.puntaje_usuario );
        },
        (error) =>{
          console.error(error);
        }
      )
    });
  }
  logout(){
    console.log('Se cerró la sesión');
    this.storage.clear();  
  }
}
