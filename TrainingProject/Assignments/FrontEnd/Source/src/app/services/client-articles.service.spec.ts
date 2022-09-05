import { TestBed } from '@angular/core/testing';

import { ClientArticlesService } from './client-articles.service';

describe('ClientArticlesService', () => {
  let service: ClientArticlesService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ClientArticlesService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
