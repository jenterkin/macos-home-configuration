deck = {}
special_deck = {}

cards = [
    "V. The Hierophant",
    "VII. The Chariot",
    "7 Cups",
    "XII. The Hanged Man",
    "IX. The Hermit",
    "4 Cups",
    "King Wands",
    "10 Swords",
    "6 Cups",
    "IV. The Emperor",
    "I. The Magician",
    "9 Cups",
    "Knight Cups",
    "3 Pentacles",
    "Page Pentacles",
    "King Swords",
    "II. The High Priestess",
    "3 Wands",
    "1 Wands",
    "5 Cups",
    "Queen Swords",
    "Page Cups",
    "King Cups",
    "4 Pentacles",
    "9 Swords",
    "6 Swords",
    "XXI. The World",
    "XVI. The Tower",
    "Page Wands",
    "1 Swords",
    "9 Pentacles",
    "6 Pentacles",
    "5 Wands",
    "3 Cups",
    "Queen Wands",
    "3 Swords",
    "Knight Wands",
    "VIII. Justice",
    "Knight Swords",
    "X. The Wheel",
    "Page Swords",
    "2 Swords",
    "Knight Pentacles",
    "XI. Strength",
    "9 Wands",
    "VI. The Lovers",
    "1 Cups",
    "King Pentacles",
    "XIX. The Sun",
    "XV. The Devil",
    "XVII. The Star",
    "5 Pentacles",
    "2 Cups",
    "4 Wands",
    "8 Cups",
    "Queen Cups",
    "8 Swords",
    "2 Pentacles",
    "10 Pentacles",
    "XIV. Temperance",
]

for card in cards:
    value, *suit = card.split(" ")
    suit = " ".join(suit)

    if value.isdigit():
        if suit not in deck:
            deck[suit] = []

        deck[suit].append(value)
        deck[suit].sort()

    else:
        if value not in special_deck:
            special_deck[value] = []

        special_deck[value].append(suit)
        special_deck[value].sort()

for suit, cards in deck.items():
    print("=====================")
    print(suit)

    for card in cards:
        if card == "1":
            print("    Ace")
        else:
            print ("    ", card)

to_print = ""
for suit, cards in special_deck.items():
    if suit.startswith("X") or suit.startswith("I") or suit.startswith("V"):
        for card in cards:
            to_print += suit + " " + card + "\n"

    else:
        print("=====================")
        print(suit)

        for card in cards:
            if card == "1":
                print("    Ace")
            else:
                print ("    ", card)

print()
print()
print("=====================")
print(to_print)
