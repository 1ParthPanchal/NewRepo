import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { ICompany } from '../model/companydetails';
import { Observable } from '@firebase/util';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class CompanydetailsService {

  constructor(private http:HttpClient) { }
  private _baseUrl = environment.baseUrl+"Company";

  AddCompany(com:ICompany){
    return this.http.post(`${this._baseUrl}/PostCompany`,com)
  }
}
