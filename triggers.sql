USE project;

DROP TRIGGER IF EXISTS passport_validation;
DELIMITER //

CREATE TRIGGER passport_validation BEFORE INSERT ON users

FOR EACH ROW BEGIN
  IF (EXISTS (SELECT passport_series, passport_number FROM users 
    WHERE passport_series = NEW.passport_series AND passport_number = NEW.passport_number)) THEN
        SIGNAL SQLSTATE "45000"
        SET MESSAGE_TEXT = "Error adding passport! Passport number exists!";
  END IF;
END//

DELIMITER ;


DROP TRIGGER IF EXISTS payment_to_balance;

DELIMITER //

CREATE TRIGGER payment_to_balance AFTER INSERT ON payment_history

FOR EACH ROW BEGIN
    UPDATE users SET balance = users.balance + NEW.payment WHERE users.id = NEW.user_id;
END//

DELIMITER ;


DROP TRIGGER IF EXISTS accruals_to_balance;

DELIMITER //

CREATE TRIGGER accruals_to_balance AFTER INSERT ON accruals

FOR EACH ROW BEGIN
    UPDATE users SET balance = users.balance - NEW.accruals_amount WHERE users.id = NEW.user_id;
END//

DELIMITER ;


