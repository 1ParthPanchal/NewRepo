import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { IOrder } from '../model/order';
@Injectable({
  providedIn: 'root'
})
export class OrderServiceService {

  constructor(private http:HttpClient) {}
  private _baseUrl = environment.baseUrl+"Order";

  GetOrders():Observable<any>{
    return this.http.get(`${this._baseUrl}/GetOrder`)
  }

  AddOrder(Ordertails:IOrder){
    return this.http.post(`${this._baseUrl}/PostOrder`,Ordertails)
  }
}
