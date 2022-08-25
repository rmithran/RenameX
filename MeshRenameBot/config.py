from typing import Union

try:
    from .tconfig import Config
except ImportError:
    class Config:
        DATABASE_URL = [str, "postgres://ahaoudqqzjftpg:f1cded7940937479eddcec5a0eda389a4380aba6415cf3fe84c8d8bd55389b86@ec2-52-30-92-209.eu-west-1.compute.amazonaws.com:5432/dbrdljsvd4a9s0"]
        API_HASH = [str, "8b0473750d327598c8585b0049f09e2d"]
        API_ID = [int, 6309305]
        BOT_TOKEN = [str, "5654495482:AAFh4_ItyTDi8gRvtFd5URp3T5jIWSABL9Y"]
        COMPLETED_STR = [str, "▰"]
        REMAINING_STR = [str, "▱"]
        MAX_QUEUE_SIZE = [int, 5]
        SLEEP_SECS = [int, 10]
        IS_MONGO = [bool, False]

        # Access Restriction
        IS_PRIVATE = [bool, True]
        AUTH_USERS = [list,[123456789]]
        OWNER_ID = [int, 0]

        # Public username url or invite link of private chat
        FORCEJOIN = [str,""]
        FORCEJOIN_ID = [int,0]

        TRACE_CHANNEL = [int, 0]

try:
    from .tconfig import Commands
except ImportError:
    class Commands:
        START = "/start"
        RENAME = "/rename"
        FILTERS = "/filters"
        SET_THUMB = "/setthumb"
        GET_THUMB = "/getthumb"
        CLR_THUMB = "/clrthumb"
        QUEUE = "/queue"
        MODE = "/mode"
        HELP = "/help"
