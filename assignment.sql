ALTER TABLE events
ADD COLUMN event_id BIGSERIAL;



ALTER TABLE customers
ADD CONSTRAINT pk_customers
PRIMARY KEY (customer_id);

ALTER TABLE offers
ADD CONSTRAINT pk_offers
PRIMARY KEY (offer_id);

ALTER TABLE events
ADD CONSTRAINT pk_events
PRIMARY KEY (event_id);

ALTER TABLE events
ADD CONSTRAINT fk_events_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
ON DELETE CASCADE;

ALTER TABLE events
ADD CONSTRAINT fk_events_offer
FOREIGN KEY (offer_id)
REFERENCES offers(offer_id);

ALTER TABLE offers_channels
ADD CONSTRAINT fk_offers_channels_offer
FOREIGN KEY (offer_id)
REFERENCES offers(offer_id)
ON DELETE CASCADE;

CREATE INDEX idx_events_customer_id
ON events(customer_id);

CREATE INDEX idx_events_offer_id
ON events(offer_id);

CREATE INDEX idx_offers_channels_offer_id
ON offers_channels(offer_id);



---Task 2

ALTER TABLE events
ADD COLUMN day INTEGER,
ADD COLUMN hour_of_day INTEGER;

select * from events order by day desc limit 10

UPDATE events
SET 
    day = FLOOR(time / 24),
    hour_of_day = time % 24;
	
UPDATE customers 
SET age = 100
WHERE age > 100;

ALTER TABLE customers
ADD CONSTRAINT check_age
CHECK (age BETWEEN 0 AND 100);



