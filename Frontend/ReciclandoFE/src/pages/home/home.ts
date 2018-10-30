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
  public token: any;

  constructor(
    public navCtrl: NavController,
    public UserServiceProvider : UserServiceProvider,
    private storage: Storage,
    private navParams: NavParams,
    public app: App
    ) {

  }

  ionViewDidLoad(){

    this.storage.get('token').then((val) => {
      this.token = val;     

      this.storage.get('nickname').then((val) => {     
        this.nickname = val;
          
        this.UserServiceProvider.getUserByNickname(this.nickname, this.token)
        .subscribe(
          (data) => {
            this.usuario = data.json();           
            this.storage.set('puntaje_usuario', this.usuario.puntaje_usuario );
            
          },
          (error) =>{
            console.error(error);
          }
        )
      });

    } );
  }

  logout(){
    console.log('Se cerró la sesión');
    this.storage.clear();
    const root = this.app.getRootNav();
    root.popToRoot();
  }
}
