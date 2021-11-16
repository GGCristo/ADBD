CREATE OR REPLACE FUNCTION crear_email() RETURNS trigger AS $$
  BEGIN
    IF NEW.email IS NULL THEN
      New.email := NEW.nombre || NEW.apellido1 || NEW.apellido2 || '@' || TG_ARGV[0];
      return NEW;
    END IF;
    IF NEW.email ~= '^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$' THEN
      RAISE EXCEPTION 'This email is not correct: %', NEW.email;
    END IF;
  END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_crear_email_before_insert
  BEFORE INSERT
  ON cliente_club
  FOR EACH ROW
  EXECUTE PROCEDURE crear_email('gmail.es');
