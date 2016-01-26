# This is a blueprint of the Plaza Game

import random

random.seed()

# Hotel type description
# (Prob of new client, Range of days of stay, Income per customer, Fixed expenses)
ONE_STAR = {'stars': 1, 'perc': 10, 'days': [1,2], 'expense': 1}
TWO_STARS = {'stars': 2, 'perc': 20, 'days': [1,3], 'expense': 3}
THREE_STARS = {'stars': 3, 'perc': 30, 'days': [1,7], 'expense': 5}
FOUR_STARS = {'stars': 4, 'perc': 20, 'days': [1,5], 'expense': 7}
FIVE_STARS = {'stars': 5, 'perc': 10, 'days': [1,3], 'expense': 9}

class Hotel(object):
    # This class provides methods to implement a type of hotel

    def __init__(self, hotel_type):
        self.hotel_type = hotel_type
        self.customers = []

    @property
    def inc(self):
        return self.hotel_type['stars']
    
    def check_new_customer(self):
        if random.random() <= self.hotel_type['perc']:
            self.customers.append(random.randint(*self.hotel_type['days']))

    def compute_income(self):
        return len(self.customers)*self.inc

    def compute_outcome(self):
        return self.hotel_type['expense']

    def compute_delta(self):
        return self.compute_income() - self.compute_outcome()

    def update_customers(self):
        self.customers = [(i - 1) for i in self.customers if i > 1]


