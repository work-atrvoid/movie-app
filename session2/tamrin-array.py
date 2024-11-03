data = [
    {"id": 1, "name": "Alice", "score": 3},
    {"id": 2, "name": "Bob", "score": 7.87},
    {"id": 3, "name": "Charlie", "score": 9.001},
    {"id": 4, "name": "David", "score": 11},
    {"id": 5, "name": "Eve", "score": 13},
    {"id": 6, "name": "Frank", "score": 8},
    {"id": 7, "name": "Grace", "score": 9},
    {"id": 9, "name": "Isaac", "score": 8.86}
]

for student in data:
    if student["score"] % 1 > 0:
        student["score"] += 1 - student["score"] % 1

    if student["score"] >= 10:
        student["passed"] = True
    else:
        student["passed"] = False

print(data)
