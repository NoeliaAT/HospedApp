#######################################################################################
DELIMITER $$

CREATE PROCEDURE RegisterAddress (unIdHotel INT, unDomicile VARCHAR(50), unPostalCode INT)
BEGIN
    INSERT INTO Address (IdHotel, Domicile, PostalCode)
            VALUES  (unIdHotel, unDomicile, unPostalCode);
END $$
#######################################################################################
DELIMITER $$

CREATE PROCEDURE ModifyAddress (unIdAddress INT, unIdHotel INT, unDomicile VARCHAR(50), unPostalCode INT)
BEGIN
    UPDATE Address 
    SET
        IdHotel = COALESCE(unIdHotel, IdHotel),
        Domicile = COALESCE(unDomicile, Domicile),
        PostalCode = COALESCE(unPostalCode, PostalCode)
    WHERE IdAddress = unIdAddress;
END $$
#######################################################################################