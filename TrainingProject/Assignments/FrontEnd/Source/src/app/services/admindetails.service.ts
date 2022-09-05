import { Injectable } from '@angular/core';
import { IAdmin } from '../model/admindetails';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class AdmindetailsService {

  constructor(private http:HttpClient) { }
  private _baseUrl = environment.baseUrl+"Admin";

  AddAdmin(admindetails:IAdmin){
    return this.http.post(`${this._baseUrl}/PostAdmin`,admindetails)
  }
}
