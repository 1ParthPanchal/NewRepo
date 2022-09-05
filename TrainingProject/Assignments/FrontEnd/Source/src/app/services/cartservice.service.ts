import { Injectable } from '@angular/core';
import { Icart } from '../model/cart';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs/internal/Observable';
@Injectable({
  providedIn: 'root'
})
export class CartserviceService {


  constructor(private http:HttpClient) { }
  private _baseUrl = environment.baseUrl+"Cart";
  GetCart():Observable<any>{
    return this.http.get(`${this._baseUrl}/GetCart`);
  }
  DeleteCart(c_Id:Icart){
    return this.http.delete(`${this._baseUrl}/DeleteCart/{id}`);
  }

  AddtoCart(cartdetails:Icart){
    return this.http.post(`${this._baseUrl}/PostCart`,cartdetails)
  }
}
