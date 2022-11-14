import pandas as pd 
import random


def get_data(filename):
    with open(filename) as f:
        # flag for middle section of sim stats
        collect = False
        
        # iterate through lines in file
        lines = f.readlines()
        for line in lines:
            contents = line.split()
            # check for blank line
            if len(contents) > 0:
                if contents[1] == 'End':
                    collect = not collect
            
                # check if collecting
                if collect:
                    if line.split()[0] == 'simSeconds':
                        seconds = float(line.split()[1])
                        print(seconds)
                # elif line.split()[0] == 'system.cpu.dcache.overallMissRate::total':
                #     l1d_miss =  float(line.split()[1])
                # elif line.split()[0] == 'system.cpu.icache.overallMissRate::total':
                #     l1i_miss =  float(line.split()[1])
    # return seconds, l1d_miss, l1i_miss, l2_miss


def get_inst_mix(filename, p, pq, n):
    # initialize dictionary with pq and n (part 2: include part of the code)
    if p == 'p1':
        inst_mix = {'pq': [pq],
                    'n': [n]}
    else:
        inst_mix = {'pq': [pq, pq, pq],
                    'n': [n, n, n],
                    'part': ['a', 'b', 'c']}
    
    # iterate through lines in file and add instruction counts > 0
    with open(filename) as f:
        lines = f.readlines()
        for line in lines:
            contents = line.split()
            # check if line has data
            if (len(contents) > 0) and (contents[0] != '----------'):
                # check if line is class of exec inst
                if contents[0].split('.')[-1].split('::')[0] == 'statExecutedInstType':
                    num_ops = int(contents[1])
                    op_type = contents[0].split('.')[-1].split('::')[-1]
                    if num_ops > 0 or op_type in inst_mix:
                        if op_type != 'total':
                            if op_type not in inst_mix:
                                inst_mix[op_type] = [num_ops]
                            else:
                                inst_mix[op_type].append(num_ops)
    
    # ensure all ops have the 3 entries (part a b and c)
    if p == 'p2':
        for op, vals in inst_mix.items():
            if len(vals) < 2:
                vals.insert(0, 0)
                vals.insert(0, 0)
            elif len(vals) < 3:
                vals.insert(0, 0)
    
    return inst_mix


def make_inst_mix_df(inst_mix):
    # initialize 2 empty df
    df1 = pd.DataFrame()
    df2 = pd.DataFrame()
    
    # iterate through dictionaries to combine p1 dicts and p2 dicts
    for mix in inst_mix:
        # part 1
        if len(mix['pq']) == 1:
            df1 = pd.concat([df1, pd.DataFrame.from_dict(mix)])
        else:  # part 2
            df2 = pd.concat([df2, pd.DataFrame.from_dict(mix)])
    
    return df1, df2


def fill_data(data, time, reads, writes, l1d_miss, l1i_miss, part, cpu, fu, op_lat, pq):
    data['time'].append(time)
    data['reads'].append(reads)
    data['writes'].append(writes)
    data['l1d_miss'].append(l1d_miss)
    data['l1i_miss'].append(l1i_miss)
    data['part'].append(part)
    data['cpu'].append(cpu)
    data['fu'].append(fu)
    data['op_lat'].append(op_lat)
    data['pq'].append(pq)


# function to compile the data from part folders into a dictionary and return a dataframe
def read_data():
    # init parts of file structure
    pqs = ['linklist', 'minheap']
    parts = ['p1', 'p2']
    # parts = ['p1', 'p2', 'p3', 'p4', 'p5']
    fus = ['default', '6_1', '5_2', '4_3', '3_4', '2_5', '1_6']
    op_lats = ['2_4', '1_4', '2_2']
    
    # data dictionary for p3-p5
    data = {'time': [],
    		'reads': [],
    		'writes': [],
        'l1d_miss': [],
    		'l1i_miss': [],
    		'part': [],
    		'cpu': [],
    		'fu': [],
    		'op_lat': [],
        'pq': []
    	   }
	
    # init inst_mix list of dictionaries
    inst_mix = []
    
    # iterate through each pq
    for pq in pqs:
        # iterate through each part folder
        for p in parts:
            # construct the filename, get the time, fill the dictionary 'data'
            if p == 'p1':
                filename = 'm5out/' + p + '/' + pq + '-stats.txt'
                inst_mix.append(get_inst_mix(filename, p, pq, 10000))
            elif p == 'p2':
                for n in [1000, 10000]:
                    filename = 'm5out/' + p + '/' + pq + '-n' + str(n) + '-stats.txt'
                    inst_mix.append(get_inst_mix(filename, p, pq, n))
            elif p == 'p3':
                for fu in fus:
                    if fu == 'base':
                        for n in [10, 1000, 10000]:
                           filename = 'm5out/' + p + '/'  + fu + '/' + pq + '-n' + str(n) + '-stats.txt'
                           print(filename)
                    else:
                        filename = 'm5out/' + p + '/' + fu + '/' + pq + '-stats.txt'
                        print(filename)
            
            elif p == 'p4':
                for op_lat in op_lats:
                    filename = 'm5out/' + p + '/' + op_lat + '/' + pq + '-stats.txt'
                    print(filename)
            
            else:
                for combo in fus + op_lats:
                    filename = 'm5out/' + p + '/' + combo + '/' + pq + '-stats.txt'
                    print(filename)
    
    
    # make dataframes for p1 and p2
    df1, df2 = make_inst_mix_df(inst_mix)
    df1 = df1.melt(id_vars=['pq', 'n'], var_name='op_class')
    df2 = df2.melt(id_vars=['pq', 'n', 'part'], var_name='op_class')
    
    # make pandas dataframe
    # df = pd.DataFrame.from_dict(data)
    # df.cpu = df.fus.map({'6_1':'6 IssueLat, 1 OpLat'})

		
    return df1, df2

if __name__ == '__main__':
    # df1, df2 = read_data()
    # inst_mix = get_inst_mix('m5out/p1/linklist-stats.txt', 'p1')
    get_data('m5out/p3/default/linklist-n10-stats.txt')