class Account:
    id = 0
    username = ''
    pwd = ''

    def __init__(self):
        self.id = 0
        self.username = ''
        self.pwd = ''

    def __init__(self, id, username, pwd):
        self.id = id
        self.username = username
        self.pwd = pwd