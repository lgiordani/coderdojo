# This is a blueprint of the Plaza Game

import time
import random

random.seed()

# Hotel type description
# (Prob of new client, Range of days of stay, Income per customer, Fixed expenses)
ONE_STAR = {'cost': 50,'stars': 1, 'perc': 10, 'days': [1,2], 'expense': 1}
TWO_STARS = {'cost': 100,'stars': 2, 'perc': 20, 'days': [1,3], 'expense': 3}
THREE_STARS = {'cost': 200,'stars': 3, 'perc': 30, 'days': [1,7], 'expense': 5}
FOUR_STARS = {'cost': 400,'stars': 4, 'perc': 20, 'days': [1,5], 'expense': 7}
FIVE_STARS = {'cost': 800,'stars': 5, 'perc': 10, 'days': [1,3], 'expense': 9}

class Hotel(object):
    # This class provides methods to implement a type of hotel

    def __init__(self, name, hotel_type):
        self.hotel_type = hotel_type
        self.name = name
        self.customers = []

    @property
    def inc(self):
        return self.hotel_type['stars']
    
    def check_new_customer(self):
        if random.random() <= self.hotel_type['perc']:
            self.customers.append(random.randint(*self.hotel_type['days']))

    def compute_income(self):
        #print "Income:", len(self.customers)*self.inc
        return len(self.customers)*self.inc

    def compute_outcome(self):
        #print "Outcome:", self.hotel_type['expense']
        return self.hotel_type['expense']

    def compute_delta(self):
        return self.compute_income() - self.compute_outcome()

    def update_customers(self):
        self.customers = [(i - 1) for i in self.customers if i > 1]


if __name__ == '__main__':
    money = 110
    hotels = []

    hotels.append(Hotel(name='Ritz', hotel_type=ONE_STAR))
    hotels.append(Hotel(name='Plaza', hotel_type=ONE_STAR))

    initial_outcome = [h.hotel_type['cost'] for h in hotels]
    money -= sum(initial_outcome)

    for i in range(100):
        print "Day {0} - Money {1}".format(i, money)
        for h in hotels:
            print "  * Hotel: {0} - Customers: {1}".format(h.name, h.customers)
            money += h.compute_delta()
            h.update_customers()
            h.check_new_customer()
        
        time.sleep(2)