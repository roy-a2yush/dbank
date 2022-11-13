export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'addFund' : IDL.Func([IDL.Float64], [], ['oneway']),
    'checkBalance' : IDL.Func([], [IDL.Float64], ['query']),
    'computeInterest' : IDL.Func([], [], ['oneway']),
    'getId' : IDL.Func([], [IDL.Nat], ['query']),
    'withdrawFund' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
