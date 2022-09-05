import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { IProduct } from '../model/product';
@Injectable({
  providedIn: 'root'
})
export class ProductserviceService {

  constructor(private http : HttpClient) { }
  private _baseUrl = environment.baseUrl+"Product";

  GetProducts():Observable<any>{
    return this.http.get(`${this._baseUrl}/GetProduct`)
  }
  Getproducts(_pr_Id:IProduct):Observable<any>{
    return this.http.get(`${this._baseUrl}/GetProduct/{id}`)
  }
  AddProducts(product:IProduct){
    return this.http.post(`${this._baseUrl}/PostProduct`,product)
  }
}
