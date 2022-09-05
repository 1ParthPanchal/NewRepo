import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
@Injectable({
  providedIn: 'root'
})
export class HArticleService {

 
  constructor(private http : HttpClient) { }
  private _baseUrl = environment.baseUrl+"hArticle";

  GetHarticle():Observable<any>{
    return this.http.get(`${this._baseUrl}/GethArticle`)
  }
}
