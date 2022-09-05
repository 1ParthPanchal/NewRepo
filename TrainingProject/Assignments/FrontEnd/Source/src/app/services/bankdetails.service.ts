import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs';
import { IBank } from '../model/bankdetails';
@Injectable({
  providedIn: 'root'
})
export class BankdetailsService {

  constructor(private http:HttpClient) { }
 private _baseUrl=environment.baseUrl+"Bank";

 AddBank(bankdetails:IBank){
return this.http.post(`${this._baseUrl}/PostBank`,bankdetails)
 }


}
