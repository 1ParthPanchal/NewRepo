import { Injectable } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { Firestore,collection } from '@angular/fire/firestore';
// import { FirestoreModule } from '@angular/fire/firestore';

@Injectable({
  providedIn: 'root'
})
export class FirebaseadminService {

  constructor(private http:HttpClientModule,private db: Firestore) { }
  getAllUsers() {
    // return new Promise<any>((resolve)=> {
    // // this.db.collection('User').valueChanges({ idField: 'id' }).subscribe((users: any) => resolve(users));
    // })
   }
}
