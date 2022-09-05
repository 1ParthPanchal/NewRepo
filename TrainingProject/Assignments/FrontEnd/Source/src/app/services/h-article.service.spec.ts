import { TestBed } from '@angular/core/testing';

import { HArticleService } from './h-article.service';

describe('HArticleService', () => {
  let service: HArticleService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(HArticleService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
