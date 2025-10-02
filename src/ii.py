import logging

logger = logging.getLogger('ii logger')
logger.setLevel(logging.DEBUG)

class II:
    def __init__(self):
        self.value = {1: 11, 2: 22, 3: 33}

    def __iter__(self):
        return iter(self.value.values())

logging.info("start ii")

ii = II()

for i in ii:
    logger.debug(f"logger debug for {i}")
    logger.info(f"logger info for {i}")
    print(i)

