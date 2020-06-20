select * from billet

  ALTER TABLE  [dbo].[billet]
  ADD CONSTRAINT  [num_resa]
  FOREIGN KEY ([num_resa]) 
  REFERENCES [dbo].[reservation]([num_resa]) 
  ON DELETE CASCADE;


  ALTER TABLE  [dbo].[vol]
  ADD CONSTRAINT  num_av
  FOREIGN KEY (num_av) 
  REFERENCES [dbo].[avion](num_av) 
  ON DELETE CASCADE;
