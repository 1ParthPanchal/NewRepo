import { TestBed } from '@angular/core/testing';

import { FirebaseadminService } from './firebaseadmin.service';

describe('FirebaseadminService', () => {
  let service: FirebaseadminService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(FirebaseadminService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
