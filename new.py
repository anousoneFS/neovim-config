import numpy as np
import firebase_admin
print("hi anousone")

def listener(event):
    print(event.event_type)  # can be 'put' or 'patch'
    print(event.path)  # relative to the reference, it seems
    print(event.data)  # new data at /reference/event.path. None if deleted


firebase_admin.db.reference("my/data/path").listen(listener)

def anousone():
    print("anousone")


if __name__ == "__main__":
    anousone()

