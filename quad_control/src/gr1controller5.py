class Ctrl(object):
    """Mealy transducer.

    Internal states are integers, the current state
    is stored in the attribute "state".
    To take a transition, call method "move".

    The names of input variables are stored in the
    attribute "input_vars".

    Automatically generated by tulip.dumpsmach on 2016-04-20 17:32:49 UTC
    To learn more about TuLiP, visit http://tulip-control.org
    """
    def __init__(self):
        self.state = 26
        self.input_vars = ['']

    def move(self, ):
        """Given inputs, take move and return outputs.

        @rtype: dict
        @return: dictionary with keys of the output variable names:
            ['sa4', 'loc', 'sa22', 'sa23', 'sa20', 'sa21', 'sa24', 'sa9', 'sa8', 'sa3', 'sa2', 'sa1', 'sa0', 'sa7', 'sa6', 'sa5', 'stage', 'sa19', 'sa18', 'sa17', 'sa16', 'sa15', 'sa14', 'sa13', 'sa12', 'sa11', 'sa10']
        """
        output = dict()
        if self.state == 0:
            if True:
                self.state = 24

                output["stage"] = 0
                output["loc"] = 's5'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 1
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 1:
            if True:
                self.state = 0

                output["stage"] = 3
                output["loc"] = 's0'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 1
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 2:
            if True:
                self.state = 1

                output["stage"] = 3
                output["loc"] = 's5'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 1
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 3:
            if True:
                self.state = 2

                output["stage"] = 3
                output["loc"] = 's10'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 1
        elif self.state == 4:
            if True:
                self.state = 3

                output["stage"] = 3
                output["loc"] = 's11'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 1
                output["sa10"] = 0
        elif self.state == 5:
            if True:
                self.state = 4

                output["stage"] = 3
                output["loc"] = 's12'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 1
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 6:
            if True:
                self.state = 5

                output["stage"] = 3
                output["loc"] = 's13'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 1
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 7:
            if True:
                self.state = 6

                output["stage"] = 3
                output["loc"] = 's14'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 1
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 8:
            if True:
                self.state = 7

                output["stage"] = 3
                output["loc"] = 's19'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 1
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 9:
            if True:
                self.state = 8

                output["stage"] = 3
                output["loc"] = 's24'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 1
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 10:
            if True:
                self.state = 9

                output["stage"] = 2
                output["loc"] = 's24'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 1
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 11:
            if True:
                self.state = 10

                output["stage"] = 2
                output["loc"] = 's23'
                output["sa22"] = 0
                output["sa23"] = 1
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 12:
            if True:
                self.state = 11

                output["stage"] = 2
                output["loc"] = 's22'
                output["sa22"] = 1
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 13:
            if True:
                self.state = 12

                output["stage"] = 2
                output["loc"] = 's21'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 1
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 14:
            if True:
                self.state = 13

                output["stage"] = 2
                output["loc"] = 's20'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 1
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 15:
            if True:
                self.state = 14

                output["stage"] = 2
                output["loc"] = 's15'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 1
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 16:
            if True:
                self.state = 15

                output["stage"] = 1
                output["loc"] = 's10'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 1
        elif self.state == 17:
            if True:
                self.state = 16

                output["stage"] = 1
                output["loc"] = 's11'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 1
                output["sa10"] = 0
        elif self.state == 18:
            if True:
                self.state = 17

                output["stage"] = 1
                output["loc"] = 's12'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 1
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 19:
            if True:
                self.state = 18

                output["stage"] = 1
                output["loc"] = 's13'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 1
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 20:
            if True:
                self.state = 19

                output["stage"] = 1
                output["loc"] = 's14'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 1
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 21:
            if True:
                self.state = 20

                output["stage"] = 0
                output["loc"] = 's9'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 1
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 22:
            if True:
                self.state = 21

                output["stage"] = 0
                output["loc"] = 's8'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 1
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 23:
            if True:
                self.state = 22

                output["stage"] = 0
                output["loc"] = 's7'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 1
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 24:
            if True:
                self.state = 23

                output["stage"] = 0
                output["loc"] = 's6'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 1
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 25:
            if True:
                self.state = 24

                output["stage"] = 0
                output["loc"] = 's5'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 0
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 1
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        elif self.state == 26:
            if True:
                self.state = 25

                output["stage"] = 0
                output["loc"] = 's0'
                output["sa22"] = 0
                output["sa23"] = 0
                output["sa20"] = 0
                output["sa21"] = 0
                output["sa24"] = 0
                output["sa9"] = 0
                output["sa8"] = 0
                output["sa3"] = 0
                output["sa2"] = 0
                output["sa1"] = 0
                output["sa0"] = 1
                output["sa7"] = 0
                output["sa6"] = 0
                output["sa5"] = 0
                output["sa4"] = 0
                output["sa19"] = 0
                output["sa18"] = 0
                output["sa17"] = 0
                output["sa16"] = 0
                output["sa15"] = 0
                output["sa14"] = 0
                output["sa13"] = 0
                output["sa12"] = 0
                output["sa11"] = 0
                output["sa10"] = 0
        else:
            raise Exception("Unrecognized internal state: " + str(self.state))
        return output

    def _error(self, ):
        raise ValueError("Unrecognized input: " + ().format())
