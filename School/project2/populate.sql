SPOOL ON
SPOOL populate.lst
SET ECHO ON

INSERT INTO companies  (company_id,
                        name,
                        description)
            VALUES    (001,
                      'Barrandov Studios',
                      'hollywood of the east');

INSERT INTO movies     (movie_id,
                        title,
                        description,
                        released_by,
                        released_on)
            VALUES    (00001,
                      'The Bourne Identity',
                      'A greate movie',
                      001,
                      '06-jun-02');

INSERT INTO producers  (producer_id,
                        name,
                        company_id)
            VALUES    (00001,
                      'Doug Liman',
                      001);

INSERT INTO movie_producers (movie_producer_id,
                              movie_id,
                              producer_id)
            VALUES          (00001,
                            00001,
                            00001);
INSERT INTO awards (award_id,
                    award,
                    award_description)
            VALUES  (001,
                    'ASCAP Award',
                    'ASCAP honors its top members in a series of annual awards.');

INSERT INTO movie_awards (movie_award_id,
                          movie_id,
                          award_id,
                          awarded_date)
            VALUES      (00001,
                        00001,
                        001,
                        '01-jan-03');

INSERT INTO actors (actor_id,
                    name,
                    gender,
                    contact)
            VALUES  (00001,
                    'Matt Damon',
                    0,
                    '555-555-5555');
INSERT INTO actors_in_movies (actor_in_movie_id,
                              actor_id,
                              movie_id)
            VALUES          (00001,
                            00001,
                            00001);
INSERT INTO movie_distributors (distributor_id,
                                company_name,
                                location,
                                contact)
VALUES                             (001,
                                    'Universal Pictures',
                                    'Universal City, California',
                                    '555-555-5555');

INSERT INTO distributed_movie_list (distribution_id,
                                    movie_id,
                                    distributor_id,
                                    distributor_type,
                                    inventory_quantity,
                                    unit_price)
            VALUES                (00000001,
                                  00001,
                                  001,
                                  'DVD',
                                  134,
                                  19.99);


INSERT INTO movie_rental_stores (store_id,
                                  location,
                                  name)
            VALUES              (0001,
                                'Seattle, WA',
                                'Rent-Box');
INSERT INTO orders (order_id,
                    store_id,
                    description,
                    total_items,
                    total_payment,
                    tax,
                    order_status,
                    ordering_date,
                    order_completed_date)
      VALUES        (00000001,
                    0001,
                    'first customer',
                    1,
                    4.99,
                    0.49,
                    'complete',
                    '01-oct-15',
                    '05-oct-15');
INSERT INTO order_items (item_id,
                          order_id,
                          distribution_id,
                          number_of_items,
                          item_unit_price,
                          item_sub_total)
      VALUES            (0000000001,
                        00000001,
                        00000001,
                        1,
                        5,
                        5);

INSERT INTO customers (customer_id,
                        store_id,
                        firstname,
                        lastname,
                        gender,
                        address,
                        card_approved,
                        card_approved_date,
                        phone_number,
                        card_number,
                        rent_limit,
                        overdue_notified)
      VALUES          (00001,
                      0001,
                      'James',
                      'Olds',
                      0,
                      'PSC 851 Box 680',
                      1,
                      '01-oct-15',
                      '555555555',
                      5555555555,
                      1,
                      0);
INSERT INTO movie_renting_list (title_id,
                                movie_id,
                                store_id,
                                number_in_store,
                                available_for_rent,
                                rent_unit_price,
                                type_distributed,
                                overdue_unit_fee)
        VALUES                  (00001,
                                00001,
                                0001,
                                10,
                                1,
                                4.99,
                                'DVD',
                                1.99);
INSERT INTO movie_copies (copy_id,
                          title_id,
                          available)
        VALUES          (00001,
                        00001,
                        1);

INSERT INTO movie_rent_records (rent_record_id,
                                customer_id,
                                copy_id,
                                rented_date,
                                returned_date,
                                rent_fee,
                                overdue_fee,
                                overdue_days)
      VALUES                  (00000001,
                              00001,
                              00001,
                              '01-oct-15',
                              '05-oct-15',
                              4.99,
                              0.00,
                              0);

SET ECHO OFF
SPOOL OFF
