import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { IPrd } from '../Models/prmodel';
@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(private http:HttpClient) { }
  _baseUrl =  environment.baseUrl+"Product"
  Get()
  {
    return this.http.get(`${this._baseUrl}/GetPrd`)
  }
  Add(prd:IPrd)
  {
    return this.http.post(`${this._baseUrl}/PostPrd`,prd)
  }
}
