

CREATE TABLE mytable (
    id SERIAL PRIMARY KEY
    , name VARCHAR(512) NULL
    , description TEXT NULL
    , created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
    , updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TRIGGER on_update_set_updated_at
    BEFORE UPDATE ON mytable
    FOR EACH ROW
    EXECUTE PROCEDURE trigger_set_updated_at()
;