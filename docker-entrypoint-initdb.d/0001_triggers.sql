/* -----------------------------------------------------------------------------
CREATE updated at trigger
```
CREATE TRIGGER on_update_set_updated_at
    BEFORE UPDATE ON ml.metadata_job
    FOR EACH ROW
    EXECUTE PROCEDURE trigger_set_updated_at()
;
```
----------------------------------------------------------------------------- */

CREATE OR REPLACE FUNCTION trigger_set_updated_at()
    RETURNS TRIGGER 
AS $$
BEGIN
  NEW.updated_at = NOW();
RETURN NEW;
END;
$$ LANGUAGE plpgsql;