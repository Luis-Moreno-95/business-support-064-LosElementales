import { Component } from '@angular/core';
import { NavController, NavParams, App } from 'ionic-angular';
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
  public userDetails: any;

  constructor(
    public navCtrl: NavController,
    public UserServiceProvider : UserServiceProvider, 
    private storage: Storage,
    private navParams: NavParams,
    public app: App
    ) {     

  }

  ionViewDidLoad(){

    this.storage.get('userData').then((val) => {
      this.userDetails = val;
      console.log('userDetails from home', this.userDetails);
    } );    
    
    this.storage.get('nickname').then((val) => {
      console.log('Your nickname is: ', val);
      this.nickname = val;

      this.UserServiceProvider.getUserByNickname(this.nickname)
      .subscribe(
        (data) => {
          this.usuario = data;
          console.log(this.usuario);
          this.storage.set('puntaje_usuario', this.usuario.puntaje_usuario );
          console.log('pasó por el getUsersByNickName');
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
    const root = this.app.getRootNav();
    root.popToRoot();
  }
}
