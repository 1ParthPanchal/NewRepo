import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { ICategories } from '../model/categories';
@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  constructor(private http : HttpClient) { }
  private _baseUrl = environment.baseUrl+"Categories";

  GetCategories():Observable<any>{
    return this.http.get(`${this._baseUrl}/GetCat`)
  }
  Getcategory(_cat_Id:ICategories):Observable<any>{
    return this.http.get(`${this._baseUrl}/GetCat/{id}`)
  }
  AddCategory(Catdetails:ICategories){
    debugger
    return this.http.post(`${this._baseUrl}/PostCat`,Catdetails)
  }
}
